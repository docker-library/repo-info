## `sapmachine:25-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:e502900042ef05127ca5193ab713f1020a175e776473340c652b6adc14e4b44d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-noble` - linux; amd64

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

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-noble` - linux; arm64 variant v8

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

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:32f0365a3455d436fdd38d1f3103dc6e23be3fe434a6c686bf62faf94b858925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97188826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee53851873df1ecbcb8bf5931d94ba34cf70e5bbc4e5884277ee240a29db7607`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:35:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:35:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5234ec5856597a4238e9d1a4bde23b6ef673b631c297ec74262e2e936fd6e8`  
		Last Modified: Fri, 02 Oct 2026 05:35:47 GMT  
		Size: 62.8 MB (62812317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f8c10471ccb5d0d30ed6fc2503f39281addbc857ec2df11ab2f6c62a074fe3d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e94c56c2369b2062b36c7951c4f92a51e09c9431f64fa82b14a8eab4e20b324`

```dockerfile
```

-	Layers:
	-	`sha256:494652cabd15951a6340241c2c68dc056b01bd04e6838ecc0d81226fd517e1cd`  
		Last Modified: Fri, 02 Oct 2026 05:35:45 GMT  
		Size: 2.5 MB (2526786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a960d89316b7cd747b5195a4bbbad3e64a46a3529506bb85a1fab25524a9a79`  
		Last Modified: Fri, 02 Oct 2026 05:35:45 GMT  
		Size: 11.9 KB (11868 bytes)  
		MIME: application/vnd.in-toto+json
