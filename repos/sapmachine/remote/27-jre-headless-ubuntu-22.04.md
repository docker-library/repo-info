## `sapmachine:27-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:66eb54ee171bcf853fb80f170dc0251adc15f0b11e2ab8e0807e95fe98fde904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:381a88732d61e13279146aac63528d8c3bc553a053f4c660dd9f9ce3c8556061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88671024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62a57b14225f6a56bc558d6e5ed7647ec78b2f22d659d5edb90b0a23ba64d565`
-	Default Command: `["bash"]`

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
# Wed, 16 Sep 2026 16:36:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73c175c571c845f4735ac460294ae2ce4f74e5ddf7f96815b2cb1a5d8dac090`  
		Last Modified: Wed, 16 Sep 2026 16:36:51 GMT  
		Size: 58.9 MB (58920773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:64ebc1806fc8aa250c2c6540cf88bd453acb9653db853612e83db108864baf29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3baffff8bf160c17593e5abca1ff248ca6f8a86446a1a55b91ce37bfb7755f5`

```dockerfile
```

-	Layers:
	-	`sha256:35dfe3b00f3943353f7e5e348e1feb78aec8a4199697d17aee97a3dd21b3ac4a`  
		Last Modified: Wed, 16 Sep 2026 16:36:50 GMT  
		Size: 2.3 MB (2299142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc6b873d91ab942e0f5ce048558bf627ecd76cae8c1132a0f295cf32ec8c65da`  
		Last Modified: Wed, 16 Sep 2026 16:36:49 GMT  
		Size: 9.6 KB (9578 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6fa3bf6a9902f5fc03d87788e76af1ab748e46c921afadde7b926929da427c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85591806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49390455db269d6365e17b5329f1f82bb1c4414937c4808f0208dd0a49a9e53`
-	Default Command: `["bash"]`

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
# Wed, 16 Sep 2026 16:35:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7becb5e3e40224354b97fb4af6462b56d824319b84e6e68a1b02632983dfb09b`  
		Last Modified: Wed, 16 Sep 2026 16:36:11 GMT  
		Size: 57.9 MB (57909059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ddd0ab205b54dd411d8df29173ac1171edeb3524f1f23c566cb9a335fa9867e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fc8f7d8aee62ef354f79b1765d7227ade41cb7ca246a1fc91a2c1d96574d93`

```dockerfile
```

-	Layers:
	-	`sha256:bc7eec4f5b39b586c9b81dd8ae2730ed9f3c354cdbe131040d51d9c3c6a42844`  
		Last Modified: Wed, 16 Sep 2026 16:36:09 GMT  
		Size: 2.3 MB (2298811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2890ad7460a6d557cc80d378a616d5ab45472a59b4dfde082d794f64a5be752b`  
		Last Modified: Wed, 16 Sep 2026 16:36:09 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:8427e62852e60e27cbf47271b5590795881ce9949a3715a8705082b17da20a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92689515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d0aaa6ed02ecadd9b31abc22edb2c5b065779dcc3098aba8446acdb26b6a04`
-	Default Command: `["bash"]`

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
# Wed, 16 Sep 2026 16:40:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:40:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:40:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a3d3017bbd297d9e847c4135afc916f72fb9311499e456a27c1800d70bf56c`  
		Last Modified: Wed, 16 Sep 2026 16:41:16 GMT  
		Size: 58.0 MB (57986836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2383e7631905cf6659abbfd0314b802dc0e49c1e424f328ee4d31a8445bb471c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2307576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70002618e0e788f503df95c0e97c4a5014b5b48cfdf8e46faefdf90edb810005`

```dockerfile
```

-	Layers:
	-	`sha256:b2b7952bbd2197a10a3dc11b093b20b19ae8bdcffb961a6ec397f6d0d79cd9a3`  
		Last Modified: Wed, 16 Sep 2026 16:41:14 GMT  
		Size: 2.3 MB (2297954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1531783b4398be26de695d59e69a8ec28d0018aa943c3d5c7256fcea3a7ab3e4`  
		Last Modified: Wed, 16 Sep 2026 16:41:14 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
