## `sapmachine:lts-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:88dc3e06b884b8fa565060604490c41b8369c0498fd4ff355b67ad9ce27efc0c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:07e3a0eac666a3b26525ceb04da88091e33b5608d7d8da3a00571b1c8158275e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252507296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d274824500fad12e38104e3f69035091b4f19d8c1a2793f5b7fab17328df025e`
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
# Wed, 09 Sep 2026 02:41:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:41:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:41:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a2aef511c4b314355c4897f2425d21361c535600db3fd6579737ac47b3d1ec`  
		Last Modified: Wed, 09 Sep 2026 02:41:45 GMT  
		Size: 222.8 MB (222757045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:655001aaa82fbc7217ea2e51ed4188b2564cf6002a92ecfad55ecf37e37e064d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9f3db553ad88df65c9eab8f327549de1c613c220e5223365338fd6901892c2`

```dockerfile
```

-	Layers:
	-	`sha256:4bc77110871d481fa230f463f456b94de85e6f037dc2e1e28cf00f3827eaff79`  
		Last Modified: Wed, 09 Sep 2026 02:41:41 GMT  
		Size: 2.4 MB (2369636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecb4704bb0049be748a9780e4bf146da2d069e648acee8e64a4ec20fc7d9b926`  
		Last Modified: Wed, 09 Sep 2026 02:41:41 GMT  
		Size: 10.3 KB (10333 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d106adccbc3fa2a1a5bff3628ec343ec418aef58e4a63dd426bcd9afde3986f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248163413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4483815feb5d82b695dd843a9289e4813e0643c58a34432bb3f587fdb9c6d1ca`
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
# Wed, 09 Sep 2026 01:41:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 01:41:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75d6602c642fbaf85751227ede2f18384edea5b4681a780c12ac23bfbc3b51f`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 220.5 MB (220480666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e2ab5e4099f786fb9055e94c73a50ca43a6baa3cd5a4b5e36c4b86a44fa18344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a14fad5c3ac5a9b69ea41bb6b14abc57fd3bd82a6dfaa73589faac889c4b6c`

```dockerfile
```

-	Layers:
	-	`sha256:b76ba77a27fe1e0df9a7227b5ec1919965cdef8e05100aadb8f8c46811673609`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 2.4 MB (2369329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7871e949afe9827048ed417320fe1b4eabf82074a994d59d7a1d6ec3b866e90`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:23774dd01f23db65bb30aaba8f2f8faad0ee228a851acd03857f48aa607e02e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255420267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f98987cad48fbbc7a676d61e72294db25bc125142fff5763555f04f58c9142`
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
# Wed, 09 Sep 2026 04:07:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:07:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:07:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0711b2dc1da6046755b06fa15df0685cce29630e08ad5d8223ee178aff94b492`  
		Last Modified: Wed, 09 Sep 2026 04:09:31 GMT  
		Size: 220.7 MB (220717588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:79e7a27a80bda5780ffd12e823a56a1c8248fc95980579c3d52dadc44db8aa35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51111c92a879f7911ea7f592a27bac9e41966338387cac285ee1658294eff3f8`

```dockerfile
```

-	Layers:
	-	`sha256:40189de65182f45bdc2ad27f4cedf8d13d235c81dad9034818e24a934b68cf5e`  
		Last Modified: Wed, 09 Sep 2026 04:09:27 GMT  
		Size: 2.4 MB (2366526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c95ba62e554c3bb9c45150482509ea13a4db3d27b245b5db6f3ce8f2143aa4bd`  
		Last Modified: Wed, 09 Sep 2026 04:09:26 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
