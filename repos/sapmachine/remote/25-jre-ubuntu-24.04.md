## `sapmachine:25-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:7590a7346606819c0569c10f9a00133e44ebe70e25ad629f03deffeffc06c6d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-24.04` - linux; amd64

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

### `sapmachine:25-jre-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:02afc9a7af387ec8fbcdbb6f2d4572c3c2f27ecce13b87c50f92203adc8864c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88816954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a48655b3b978581e5df0af9c6aa5ad65a2d42e316534f8e3e4f161567054d3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:38:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:38:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7f073987a4e715c85bb4421071ade47fd362890ff2e1e918cfa91fdd8d8bd1`  
		Last Modified: Sat, 17 Oct 2026 00:39:04 GMT  
		Size: 59.9 MB (59877193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:197fd38671b3c4ce3364ea3e4e9946abb1f0e99980bef1666c5159f2a166d30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e48dde72c8092adf6d071df01472978b8361d0ba35382001397c110bc838229`

```dockerfile
```

-	Layers:
	-	`sha256:611a199990f945d15daaad2836eff3095679a0289e3fcce5b55f81cfcc2ac274`  
		Last Modified: Sat, 17 Oct 2026 00:39:03 GMT  
		Size: 2.5 MB (2528473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8f11f9ae4a7479c391dd1c06bce5ba0804e3dc3c697196906073eebd1916561`  
		Last Modified: Sat, 17 Oct 2026 00:39:02 GMT  
		Size: 12.0 KB (11971 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-24.04` - linux; ppc64le

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

### `sapmachine:25-jre-ubuntu-24.04` - unknown; unknown

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
