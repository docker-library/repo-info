## `sapmachine:lts-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:7ddd88654a11b15f3362be9b128bb999125400a0af7262c7b438c761e7e2328a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:7ddcffb01361188465186256b4a7ba84d41e6654ac2f5353867ad7c56cd90511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93095679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd024fdde5157852da562fa879f5852115329aecb74d7d031c4abfb39de25773`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:37:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8d2aa2cec807f0afcba359d45084409a43bebcf846662bc1608eb3ab20242`  
		Last Modified: Fri, 02 Oct 2026 01:38:13 GMT  
		Size: 63.3 MB (63331257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d270b725d7ec2324955a57e7119fafe0862e8d0bee421dad61760a6c9db2c288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b45a07951785eb0b1bc60d420f52046575a90813db44a562eaf28e627b609d`

```dockerfile
```

-	Layers:
	-	`sha256:858e2f89f564443f49b4d52ae7216b54bcf499edf5f255504c11e4bd326cb1ea`  
		Last Modified: Fri, 02 Oct 2026 01:38:11 GMT  
		Size: 2.5 MB (2527900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff187ecfec84b7f7d86c454723d0bd87edb4c8704f01e64681ffe3c7c3f460dd`  
		Last Modified: Fri, 02 Oct 2026 01:38:11 GMT  
		Size: 11.8 KB (11782 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d966f276250f55187ca28752f2098d94d67e48f4b674316d7a9a248f8a430b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91079547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096a78eb5d4c9c6ee0774d6038810058e3df2d86784f4267ca749bef9d451b87`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df0ff170b2a675b284b360becfa78838ac0836640c4bdb825c19e102978ff59`  
		Last Modified: Fri, 02 Oct 2026 01:38:18 GMT  
		Size: 62.1 MB (62139460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:580f2f04f66dcf0171f37d1cd53df47cc3ec4aeb5e59d145df3be74be7bcfc55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280c01fbb213a4e3e5e4e15324f2eee28fa123f51a433267d58b2324a1aa0869`

```dockerfile
```

-	Layers:
	-	`sha256:e1e9bb02626de195db1cb633870a758b181ab02eba3638628dfd436c178522b9`  
		Last Modified: Fri, 02 Oct 2026 01:38:16 GMT  
		Size: 2.5 MB (2528449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3631784de1cb0a721bb21133f36332fba337ec4ebe3a53a5f3b71103850be73`  
		Last Modified: Fri, 02 Oct 2026 01:38:16 GMT  
		Size: 12.0 KB (11971 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5bd0343ff530750478f5a74ce6b0db2dd14185a072c51cf736761be35d110b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94477042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015a7af261c707b3a9b5007087e4d164852425f3bb262254ed1cb95a7adb4d13`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:05:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:05:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 08:05:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335e46a1ae8beaf51b3ecc80e2787b7bdf92eb53114a14ffdfd2c58d41f8ff2d`  
		Last Modified: Wed, 16 Sep 2026 08:05:27 GMT  
		Size: 60.1 MB (60100084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:35b31b09ee76bce685eb275b07b895fea23d3122073c09c83c259c73f9ef9088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4477899c187669fea0e17e4662abd34f0be2ea56cb91fc67ccfcda16e46cf4c`

```dockerfile
```

-	Layers:
	-	`sha256:1832be81734a4bba5a13af2ba5570c67af0c48506131f80069a6fd71f82a4d9f`  
		Last Modified: Wed, 16 Sep 2026 08:05:25 GMT  
		Size: 2.5 MB (2526786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d19b8f49f992c789a7a3db8f8e74b32368c99223d7169454d3639c66d8aca30b`  
		Last Modified: Wed, 16 Sep 2026 08:05:24 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
