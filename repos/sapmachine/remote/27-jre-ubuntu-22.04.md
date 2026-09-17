## `sapmachine:27-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:6e7d780dbfd5760f74e6e75d185cb660005fd01ed5b9fbdc4a0e1ab4ce07003e
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
$ docker pull sapmachine@sha256:70b13ca2f3482300ae991ad7048f350b120c2b264ada60cd679cddf9912c1f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90203383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ffa72cf9d526075c1b8a4174892ffb93539d982d6c29360b52c0f6326d4d42`
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
# Wed, 16 Sep 2026 16:36:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947dbd9cd9f3be23abec3bcacffd725951e53298145fffffdc826996380874fe`  
		Last Modified: Wed, 16 Sep 2026 16:36:44 GMT  
		Size: 60.5 MB (60453132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:73e61120c74b24e1b1c320c669cd04d8933e7f043734bc8e251a50fd62e47a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c75cb1946f433ff6febfefc45484c64269664dc5ee7898bcdf74318a66974d`

```dockerfile
```

-	Layers:
	-	`sha256:051dfce4c85963e31ebbed3bc8a5b550d8a1c3d760cb3f9f5a97f7e49b3b9709`  
		Last Modified: Wed, 16 Sep 2026 16:36:43 GMT  
		Size: 2.6 MB (2551168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31b68ac8b62ad6b330b13093fed158cb8d73e0d0d6f433e6bcbdd3abac6d1ec3`  
		Last Modified: Wed, 16 Sep 2026 16:36:42 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f01dd67abae401b998869bef0cc5b8e814570cf4ebefb4ecf2c476f2d97771b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87120585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b239688d623a9db7e022fc181b37cbab4d39236d2ddbe93db86f03134874971f`
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
# Wed, 16 Sep 2026 16:36:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933d4984157f064cb420f999320ebb3be36d473f8a6603e850894be89ff7dbc1`  
		Last Modified: Wed, 16 Sep 2026 16:36:15 GMT  
		Size: 59.4 MB (59437838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d902734ffdc86fe60600cbc6706bc878c7f245652f71f0734a1ec0930bb4e691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1c2b55ecd6e9e5b32c733e8e345ed1a79ad16caccda595a9a3a20142244c9b`

```dockerfile
```

-	Layers:
	-	`sha256:8c138f3d3d84e584372fba1c67d83dcdc3db081650487bee2012caee208a5bfc`  
		Last Modified: Wed, 16 Sep 2026 16:36:13 GMT  
		Size: 2.6 MB (2550847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1066450f274357aa46f5c76fc83038c5638160717e77b167b45d0241f7a9928`  
		Last Modified: Wed, 16 Sep 2026 16:36:13 GMT  
		Size: 9.6 KB (9571 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:75b01652d36786ae804762fccd52ce3977e459c1ba6b512fbdb267d11981522a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94427264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22997ec17455f7f642989a3e67d5418849ce1a4cfc2b6c1371a3642593d6d8f3`
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
# Wed, 16 Sep 2026 16:40:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:40:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:40:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e3edc0026ab6f453ee97b8214277107ad684e5ded7646732659592be8245e3`  
		Last Modified: Wed, 16 Sep 2026 16:41:16 GMT  
		Size: 59.7 MB (59724585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d2c7c490fa33511de2c83e55ca2f5264333f96d7d263b7cbd7732bf0049625b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a66cdc287c87fbe5b6da4782116815a6915d989759fe679e1ad1ac8cd3a6ed`

```dockerfile
```

-	Layers:
	-	`sha256:7fbb741181fcff14d65d8eaebfe3974af96fcaa5465f6dc4e8f356134fec2c13`  
		Last Modified: Wed, 16 Sep 2026 16:41:14 GMT  
		Size: 2.6 MB (2550070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:251cd0c5ebb0aa46c142f7f29b733606754da80b4406a3be48fbd2cf87d3d09c`  
		Last Modified: Wed, 16 Sep 2026 16:41:14 GMT  
		Size: 9.5 KB (9511 bytes)  
		MIME: application/vnd.in-toto+json
