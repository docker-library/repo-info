## `sapmachine:27-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:8d00d3f2b0c56d92f1290ecd7eb35b079c9b7589b920bda9df6522bac0a32024
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
$ docker pull sapmachine@sha256:5a3b5fd422e3e62e761f096feba933f4921bde1fe2d73f381268f642541b9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90213583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d852f33cd46fb918b66369a498b3fb7485aea2980622ea28659efcda067b20`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c07277d73f9ed2c24750946ec10b0e8e3f3254edab9e97691324eef5f7145b`  
		Last Modified: Fri, 02 Oct 2026 01:37:47 GMT  
		Size: 60.5 MB (60461956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:db5c84ced2d163b7b671912887a045dc0444bbd6d5233b992e39fb5a8c9608ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07882869fa74b4670463808b0fb99e910e2deac72a8ec3d5e65eaf6ff2f82fc9`

```dockerfile
```

-	Layers:
	-	`sha256:9a9536a0ce7c4e69e4521e6e4fe43c3a17c35cc36a200d45189edf73f59fe390`  
		Last Modified: Fri, 02 Oct 2026 01:37:46 GMT  
		Size: 2.6 MB (2551196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361b23393d0fcbf7aeeb59d498f55785b1e37b94fa1f02c3f6286aa0e7f59374`  
		Last Modified: Fri, 02 Oct 2026 01:37:45 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4e9a6a44b931263348c6b83dc43d9993eb3bfad4ec4f9f073da331d6b9d98bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87126534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2df18db765788bc08db326e2b8880b8a0e8b1a47f9b71d39a4ca05c989f75ea`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f19843a3930f7a9ce08c4e4accfcba5e3ae22f2b03183b8f198a2027bc525a`  
		Last Modified: Fri, 02 Oct 2026 01:37:46 GMT  
		Size: 59.4 MB (59442398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c049d9ac75db362ce21e401e73d4f4ec9c313531798df6e54944719cdb62fb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8754ed8a6de4ba41ce4690d24d0c9e767ef73e80c53d40a36bf4507b5ef47f9`

```dockerfile
```

-	Layers:
	-	`sha256:2f0f208aba33d439f6df85ef51236f187b00d251ddbbf5ebec12f8a78f11467d`  
		Last Modified: Fri, 02 Oct 2026 01:37:45 GMT  
		Size: 2.6 MB (2550875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1486d831787b4bc436ec692634566fd75e2025c8da15423550ea9324d99fc58a`  
		Last Modified: Fri, 02 Oct 2026 01:37:45 GMT  
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
