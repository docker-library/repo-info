## `sapmachine:27-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:825fe01f328d6a5d91b29b5acb27cbe6c5de98edbc97ecd851fd469d153f09a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:e4d86cbfc238aebe58a6b97320529c2b1b53179b2782c4e6b42ec7ac89a43c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90560045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f079cb99ab78c5fc0ef7b293a15e155f52d031e0c6f4e845f92d44e254075b1b`
-	Default Command: `["bash"]`

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
# Wed, 11 Nov 2026 23:39:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:39:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6c4c423686901c92af6fc18160f85a67f7d5c489969737112fab92ae9b519`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 60.5 MB (60490512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:68f3c24749d8ff309001d998b03d0419ab85f64517ab9471a1e4204c195e7106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9698d92d656c6db138d684c8b392a0ece43ea5fb30d19ce38c6d9bff4a206d`

```dockerfile
```

-	Layers:
	-	`sha256:8506b50177eda3359ac8bff6eb12e6762da3b37f6d693c08ec21354b2f087c8e`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 2.6 MB (2552580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cda377e8d02d6064d5a74e8e334cf2b52b05cdc083dd0a9c3bea1b72936a8e14`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 10.2 KB (10178 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7b4ef73d43bebf35a4a0c18a3871abd6c651a0e3c1382210d98fb529598b2049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87499430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dba9253f9509eba86578f7792cdde4fc79c735481eac19b6a4802467c940a8`
-	Default Command: `["bash"]`

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
# Wed, 11 Nov 2026 23:41:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec22693f4ae7f83f9de50d14dc22eaf07edb745491ac57d8aa18306ca6c2d66`  
		Last Modified: Wed, 11 Nov 2026 23:42:06 GMT  
		Size: 59.5 MB (59498018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:407536d3149f864749e1235fd70c67fa1a5a1dcf9d96c7302626bda4bb25b01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202139b8195a592dff1ba95221dec438e87b8f1e5cdc150d410328927b424ad5`

```dockerfile
```

-	Layers:
	-	`sha256:f3e98b56a61394e9134ffdc0b429a6ccd2cbe7391c9d19d43795ce2ecdaa2b05`  
		Last Modified: Wed, 11 Nov 2026 23:42:04 GMT  
		Size: 2.6 MB (2552283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef358945e91133b2243258192da671a88f60bfb793c22909834fba7cabded1c3`  
		Last Modified: Wed, 11 Nov 2026 23:42:04 GMT  
		Size: 10.3 KB (10307 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:48c9da995f9c6b1d57aa7ee3d8361534390ecfbf09f5e524efa41f3b02e7257d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94781697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82218a45300c5cce02f76f847173d2e6aed2226eb6a20b17e38b93c4b752a12f`
-	Default Command: `["bash"]`

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
# Thu, 12 Nov 2026 04:49:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:49:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 12 Nov 2026 04:49:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf6380098a1a9fd4300b3cd7f42efe69e4b2ead12971f50206c4b697750612a`  
		Last Modified: Thu, 12 Nov 2026 04:50:32 GMT  
		Size: 59.8 MB (59763597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4f3d5b3cde4c6981cd9bb62ba9ac67bf0e839b2fd0c225bec2319511e2c06423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd2fc418826b4d0715af3fe71594463bc14572c963e17cd5e7cc7b6c2e25a6f`

```dockerfile
```

-	Layers:
	-	`sha256:2629006fa2babf47e8198b01aad93c57064fc04e5b1dee859813d668e09437f1`  
		Last Modified: Thu, 12 Nov 2026 04:50:30 GMT  
		Size: 2.6 MB (2551494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b28f9aeeef6db84cbaee54917bf1e85c28d4a42f35cf87c9487ff9a5e8029a`  
		Last Modified: Thu, 12 Nov 2026 04:50:30 GMT  
		Size: 10.2 KB (10235 bytes)  
		MIME: application/vnd.in-toto+json
