## `sapmachine:21-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:bda2928b6a035fab7421d3548d585f36364f144ea1ca177fbaf6fc1ef3b718da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:434f48a73300f0a858a9d6075101ae5cc7fd5162bac0385b96f4981f9a35ce5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93556489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447ee5f2af08a9e279bf49244b890de21302073340cb18b21a672c331beb003`
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
# Thu, 20 Aug 2026 18:06:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:06:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:06:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9cd21c9f1722c20af8c37b7ea966b228910c09bb825586ffacc4b534d5aff3a`  
		Last Modified: Thu, 20 Aug 2026 18:07:05 GMT  
		Size: 63.8 MB (63803682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8497496d1d6471efbba106d9819af34b8242f9de919c47ff11d317ebcd5f63ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fcc8c8faaa906acbd78b6e22380b084e88cf95f46861c79e3425a403f1ed5c`

```dockerfile
```

-	Layers:
	-	`sha256:dea7d05cfbd6e00e8563c9088c47765e8a79bb41101259ad1ff48b729e544dcc`  
		Last Modified: Thu, 20 Aug 2026 18:07:03 GMT  
		Size: 2.5 MB (2521772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64ae2e3ffde35ed70e23f7b2bb8e752dd5d47c5ee10e63070bb1d81f0f4ade99`  
		Last Modified: Thu, 20 Aug 2026 18:07:02 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ffa746af513eb9bea0fb7a49ff50995d13ccea0ed066f2f9103fb1ce22668ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91881805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71403923741146edc873129193ff0cdd545675133747599b9ee4577c5438c32b`
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
# Thu, 20 Aug 2026 18:03:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:03:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595a7d1cebfac7eec1fd7387323755f55023050e1294fa976a3b553748a458fb`  
		Last Modified: Thu, 20 Aug 2026 18:03:56 GMT  
		Size: 63.0 MB (62994570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dbf46fd20ec53894a98692f2e507d0d15d5901b6826f0cc46c6dfb71b973ce22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55d5aa92b96f6ab23092cd768149729b0e8bfff481d9eecc865f875d5013431`

```dockerfile
```

-	Layers:
	-	`sha256:c96e9ab5ab7c8cb02f3695aaca77bf4cc6d2652dfe939f269ba4c7b5d85a6843`  
		Last Modified: Thu, 20 Aug 2026 18:03:54 GMT  
		Size: 2.5 MB (2522288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e52ccb90d30460b6d12b5b96ea8c67467e52be4b8d1ac4cb837d781943d6f596`  
		Last Modified: Thu, 20 Aug 2026 18:03:54 GMT  
		Size: 11.0 KB (10953 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:df1180b014b60c146e3c5cd45949ab0625727f577ba251931c5e7974dcf8c562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (97971084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a890fd5009df3e10c7a562a0b24053b86c3f70bec854c3d1eead89535eb47b69`
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
# Thu, 20 Aug 2026 18:10:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:10:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:10:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08af1b2ad674595ac851d3b3fb546eff81a94afb950b799c7f5f6a89fa11557`  
		Last Modified: Thu, 20 Aug 2026 18:10:59 GMT  
		Size: 63.7 MB (63659889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:caa2786f1df82f1734681c346036cb299376b6eff3eb189344c6a5a0f82e1ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b45e018618dce9a635d7d2623045012c13b40ceca0695f2b2180978bdce8b`

```dockerfile
```

-	Layers:
	-	`sha256:5ecb65bf5403f2cf61493f5214417b1a61d993d188bb6d38f525ff16e2516052`  
		Last Modified: Thu, 20 Aug 2026 18:10:57 GMT  
		Size: 2.5 MB (2521270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08613ec04c318f24afaf29c7a7c267c8772fade23f6ca48f4091f0138b2045f`  
		Last Modified: Thu, 20 Aug 2026 18:10:57 GMT  
		Size: 10.9 KB (10870 bytes)  
		MIME: application/vnd.in-toto+json
