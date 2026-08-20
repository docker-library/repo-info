## `sapmachine:lts-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:808a5891619f0d9d54af55b6f19d8ff9db36d59971a0091f985ef8a6d38ca316
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f55040c5e8bde2c0d05e18121ad28cd6d29bc27fd4e8d6680c61a632faed2f7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89095625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd6a8c7557c9ca1700c60b920ddb96c57b4c945ce7a1570351f259395721dae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:05:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:05:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70b721a30a6e9a408fa6b748778b8bfb711a6c2cbd02bf4dab651409ffdc59f`  
		Last Modified: Thu, 20 Aug 2026 18:05:55 GMT  
		Size: 59.3 MB (59342818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8b175e49770dad20232ce0e47c0bda3f95852cc556eaf7b80da82f818cef8b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835b97a54673861f8a0b629eb81cc119b063f97e0aef6e50a7b8c509d8b02083`

```dockerfile
```

-	Layers:
	-	`sha256:83e93fec4f5bdc95d530caecb7532fb21a3d02a26cba7d5fe4afbd152991a6ba`  
		Last Modified: Thu, 20 Aug 2026 18:05:53 GMT  
		Size: 2.3 MB (2280872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cbf2e63cf056f43593c2e30a2e3d5c2b30008b18a4174cf614df9087ff716a5`  
		Last Modified: Thu, 20 Aug 2026 18:05:53 GMT  
		Size: 12.0 KB (12020 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:92da385b187b79e358e9f68b26e4af99f13cba2ad577b4c19a42675144adcd90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87181320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0670aa79c99e33d6491c2109106335398bd7c3fb8b09247eb31614e74d38c39`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:02:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:02:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5cf1db5f9b82bbbb03a72d2a48dd528c4be6219bc7c79d2b694c85ea8488db`  
		Last Modified: Thu, 20 Aug 2026 18:02:40 GMT  
		Size: 58.3 MB (58294085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2e5f3f5f44bcfda186a8661aa3b7b9d4eeb003a8309b4c23cac5ea946f648fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d43d6e48ef4a0d565a35ce3a67136fdff40b484b7a6740a7588145662e50ca`

```dockerfile
```

-	Layers:
	-	`sha256:d21ee690b94e334adc39a94ae09ac13edf966051b6f7a032f370de4bd00af41b`  
		Last Modified: Thu, 20 Aug 2026 18:02:39 GMT  
		Size: 2.3 MB (2281412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2898e0cbd3e1d75dd1a270f419fc5705b8944527813da8059e717bdec85a972d`  
		Last Modified: Thu, 20 Aug 2026 18:02:38 GMT  
		Size: 12.2 KB (12208 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2bd38f8d9c98e0415f0a76f132a4fb8526fb1f8c838ef60ea47ccd8803760b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92660781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1cee5381043ecdcf20d1c49f7dd997ee58fafc99c915a9b04cad59fb1764b68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:03:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:03:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b89a2124e95a3f7dd4236f709833916cc03cb96c1eed683652d3b87aa8d186`  
		Last Modified: Thu, 20 Aug 2026 18:04:20 GMT  
		Size: 58.3 MB (58349586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:37e0e68819a318f2fdfe2d4ab62d66134016fc9cb49222667e9c74a10fc390e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1181f48e33650175bafc1d861688d38c3a21c38a349739e1c5ecaa6fa29f1c2a`

```dockerfile
```

-	Layers:
	-	`sha256:51621af49f6c06471e6415f922a18232ffeaf234e8f94ac06407972fa93cc907`  
		Last Modified: Thu, 20 Aug 2026 18:04:18 GMT  
		Size: 2.3 MB (2279677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9092f75c608fc2f4ad98a75f5c11173403e75e970c464b33bffabdcfd84007fa`  
		Last Modified: Thu, 20 Aug 2026 18:04:18 GMT  
		Size: 12.1 KB (12106 bytes)  
		MIME: application/vnd.in-toto+json
