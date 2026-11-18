## `sapmachine:21-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:3d5c13a534c79c9a692d4a4e4c57bbc6e626cb2ee6fb01885f44feafa44dfee1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:3e35eae69100673cd0e32aa64cc189599086e9d66f22b3c24a679716a3b8ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248167456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde49970ea3c91af634505edb2ea0baf7854909f31d4d89f213cda19243698e4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:42:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:42:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac8833f5c62ed50ebb520db153a3a99651725605884b09ea9a185015f01adb2`  
		Last Modified: Wed, 18 Nov 2026 16:42:35 GMT  
		Size: 218.1 MB (218097923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2e3064aeb92211fbc99c17aabf58225ab1f1194ec0f1c1ba7e0b91bf8398b2f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3578a2d13eadb48b80366e77ab7a703bde98048294c03db97761de89398908b0`

```dockerfile
```

-	Layers:
	-	`sha256:eabe9dc98713ce8051a056470a72a2316dbd589d7d41427967c16643acd024e5`  
		Last Modified: Wed, 18 Nov 2026 16:42:31 GMT  
		Size: 2.4 MB (2380774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68347986cf6b95493d75b30e2e0b2a0ed62f41cc8fd8e75a63972e4e56f35d15`  
		Last Modified: Wed, 18 Nov 2026 16:42:31 GMT  
		Size: 9.6 KB (9638 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2d71e18c5cf06bee1d85870647e00b081f3bb9908900adca3cbc7a3d2679b5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244281238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919084366adaa81665d370c569df4820c701e2a622a9b8c9cd008234653f657c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:41:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:41:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3c2353feb022c195f4432d5336c9b556d6c4f98651a7b3512a3dec1584c54`  
		Last Modified: Wed, 18 Nov 2026 16:41:43 GMT  
		Size: 216.3 MB (216279826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a9691c3b08a8b0452a14084227860fa7054e56706c5d14219e3e13d0b0a6f34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab78a87dbd3cebcc5273160c86c83bc8669c4aff7118dd19e93e8b5d66f68bd`

```dockerfile
```

-	Layers:
	-	`sha256:077f6cbdf415e229a67845c1dff7081df32ade4e355c45dcf446ffdc7ad26ac4`  
		Last Modified: Wed, 18 Nov 2026 16:41:39 GMT  
		Size: 2.4 MB (2380446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7809d99b222810447765802ab7393d3a685f268e19352c3b0d1a34001471423b`  
		Last Modified: Wed, 18 Nov 2026 16:41:39 GMT  
		Size: 9.7 KB (9742 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:16134cc8b9d0c12ee2d5c1e216041971033c5923229085fd80a604f5ad1beed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252679148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1573ecdb7aaa77e9ed87db7c6654541b797c8e756ef22705d444a22b9f8e49d2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 17:10:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:10:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 17:10:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8814771f77d8afbcd400d1697d3dacee0022e242953906c5595f4cfafba46`  
		Last Modified: Wed, 18 Nov 2026 17:11:44 GMT  
		Size: 217.7 MB (217661048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b64ef08e2ad6d3367281f95f8b1ff9e7c9e07373d28b38b8fd809be9c5d71480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7a96547aff388b8c0cb5393e832f0b7173d7ad92ff1e631ecdcde485e7b368`

```dockerfile
```

-	Layers:
	-	`sha256:5a6ea5aa2fa6234f8856e56ced0b5e23a23d4fb74d9d678049fe5c54e00b1818`  
		Last Modified: Wed, 18 Nov 2026 17:11:39 GMT  
		Size: 2.4 MB (2378270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b2d6435f8e0c1ba98b3e36811eeed698f119dba7dbcfaeb81bea558ffd62281`  
		Last Modified: Wed, 18 Nov 2026 17:11:39 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json
