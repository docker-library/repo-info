## `sapmachine:25-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:2f286ba24b6f64a81680a559dabee926128e7e9689db2e6bf1c1cd40f075a832
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:74f3f7004412d90bf3a851246b42544ef7371e1a1e47a1084c9030296d6ada26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252588582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edae7ad2327889f99608a21ee27d1a487b0b80fc7dfa27f05c530a26259c3abb`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf5ccd62cc2dee32cf82b9d97d17c9db026e2314e961f8acfe64558fbb3cde0`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 222.8 MB (222836094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8100001b5d3c814e9f8a0af5d9fae7279453b98d20aef181e865a8ca4aaffab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3377c523bf66e1980048802508f27fd10284f7c58d989c1ba0d1e34d648ca92`

```dockerfile
```

-	Layers:
	-	`sha256:133de2315226af0cb8aa9964ea140e6cc6d216be803802b168404a0c983cd3a1`  
		Last Modified: Mon, 26 Oct 2026 23:39:49 GMT  
		Size: 2.4 MB (2369068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1c5ba52765c34919ef1c3d25352f55e5ea5df8a6b626add95981ca13daa4db3`  
		Last Modified: Mon, 26 Oct 2026 23:39:49 GMT  
		Size: 10.3 KB (10346 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9f82c1711f0c31ca3f05f1d0bdff420b2250207be2b479027f95b3e95421fe15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248562342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00052f4c809c132fe2d847e9dac4c3cb2c939cd75a29d2914bd0a7712a4f2c3`
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
# Wed, 11 Nov 2026 23:43:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:43:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02249990f26d9c26cbc760543bc2cc222f12ae57e06241cbc3fd17ffb7c866e9`  
		Last Modified: Wed, 11 Nov 2026 23:43:47 GMT  
		Size: 220.6 MB (220560930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ce173fc78244fe3c0c654bec168b73d5bf7417c90fda04d2e8018eaee29fd7ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a499e783a73b1aa31a3f561c770b7bc56057ba31fc8e74ac72e9859e925e67ce`

```dockerfile
```

-	Layers:
	-	`sha256:f558ad2e9267322b578c32b9d95f627f98ca4d364e374c57d84d0129ea7a7938`  
		Last Modified: Wed, 11 Nov 2026 23:43:42 GMT  
		Size: 2.4 MB (2369369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becf32a014f0c19b264da33a70e842838430322e0baff3700a04d65d6b1cc2ef`  
		Last Modified: Wed, 11 Nov 2026 23:43:42 GMT  
		Size: 10.5 KB (10475 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:cc5ee10562ac246cec0226487dde5a26859e4e3f1cf142fa8d4c341cb70af234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253930828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1507305257f195e291dfcc03d1265d2772c52569777b9d8589d992aa3610d877`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:35:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:35:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2c7e2a7426003d57cfcc7ae841d6bbd9f47f55a39390f25f21c210a4bea222`  
		Last Modified: Tue, 27 Oct 2026 07:36:34 GMT  
		Size: 219.2 MB (219226895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6cf283e5ce2457c83f90e60173fb670fef3803f2644acd991a54a5451183443a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c627e04b902a16621be0ae8de5b25c09abae44cfc28d3423c850ec8b931e581`

```dockerfile
```

-	Layers:
	-	`sha256:63e2667a94f0ab544e6ff926402255196f622a5468e4460f4d86b168711d309a`  
		Last Modified: Tue, 27 Oct 2026 07:36:29 GMT  
		Size: 2.4 MB (2365958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c26a34dabfe645fc9ebe05c326b1b4f02a32d49f0f66fca473b01885411e11fc`  
		Last Modified: Tue, 27 Oct 2026 07:36:29 GMT  
		Size: 10.4 KB (10403 bytes)  
		MIME: application/vnd.in-toto+json
