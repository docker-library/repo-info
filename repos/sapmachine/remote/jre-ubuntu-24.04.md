## `sapmachine:jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:54292bdf8d119cd55c738cb384e8fc8c2e376b3dca2addff722d9ff3a2083482
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a3ebbc912f2f88207e1f284df2ee3ff0fb6b8bb2a7e3b006422032b7a1a3e2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91606937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644bfc10269b6a5b229c4c3791a77e747cbd66bf909d5fd045e0436b30525e6a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:40:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5143fb0720f4e67e05443f275e97ad6f056c0f5c67c8aa77e545680059beef`  
		Last Modified: Wed, 09 Sep 2026 02:40:20 GMT  
		Size: 61.8 MB (61843684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f5c677e81737e2376ed06b96733626ff74ee8137d64088b065e66963bdce8509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4177cbdcc553d10b13dcb7bdee46a401f01b6f77320c2837cc6090c355c89b`

```dockerfile
```

-	Layers:
	-	`sha256:a1b9f9fb99074a0e6cdaea5e536429ad040997496c2d09206f62e3a389055faf`  
		Last Modified: Wed, 09 Sep 2026 02:40:19 GMT  
		Size: 2.5 MB (2526278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b432f12578253f4c29d0081c43bf4c495d5b05ed22400c56e29ceb3c4e52a00`  
		Last Modified: Wed, 09 Sep 2026 02:40:19 GMT  
		Size: 12.1 KB (12059 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3dcf084b868cc5fddbf437baefb4393779d6e0ab6c3c5cd8b56d7c091a4a9330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89792258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff081021bd255ce673675894e29e427c7ec2f5d30d7e2b8abb976eeda7a5f70`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:34:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afa2212e4bb084b331cba891f1a905b650595c49b3cb26a0ebe2545796f2267`  
		Last Modified: Wed, 09 Sep 2026 02:35:09 GMT  
		Size: 60.9 MB (60852243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0bba299dbd8d07c72f52825aa298f0ee181bfbe4a6613382ff7fe069b3ac3e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1e50ed0726480795e28518e568ec25d94e74c28286e3c49cdc37fbddab3bba`

```dockerfile
```

-	Layers:
	-	`sha256:8d29546c49b475010cc01cbee952987067c8ba2ec5135943592b442c699e6246`  
		Last Modified: Wed, 09 Sep 2026 02:35:07 GMT  
		Size: 2.5 MB (2526839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fcec8a41584e7221c3267d3788d55d2f399c5475208cfce288468d931f90e0e`  
		Last Modified: Wed, 09 Sep 2026 02:35:07 GMT  
		Size: 12.3 KB (12259 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:98b4e91a118c17cc922ba55429cdf2cdc6d54f9b10856c7899c546df1a308f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95788896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ca151808c5c7b41b079bff7da50d69609ea32dba5bc056f942476a50111411`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:41:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:41:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0989ec616f5b2e4a6b395c36912eda12381b7068b031208dd2a7bf3c8ae94a`  
		Last Modified: Wed, 09 Sep 2026 03:42:24 GMT  
		Size: 61.4 MB (61412017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c3efac42260a3a7d138cc1585b18e4cb9215080c8b9c6994bcedc9da886b2d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c687c4abf0dc0c21bcb5755fac364bdb8eac258c8ad8b6edc0f6bf6ca836f432`

```dockerfile
```

-	Layers:
	-	`sha256:a0dea2ccea9a6c0f08798111d4f77eca1622545f5135d7bd3ec4728079ce11dc`  
		Last Modified: Wed, 09 Sep 2026 03:42:23 GMT  
		Size: 2.5 MB (2525170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4a4ecaa02b1f1c0f760aa7659b2c7b752e079cd1467a4371cb7fadc2dc1d6fe`  
		Last Modified: Wed, 09 Sep 2026 03:42:22 GMT  
		Size: 12.2 KB (12151 bytes)  
		MIME: application/vnd.in-toto+json
