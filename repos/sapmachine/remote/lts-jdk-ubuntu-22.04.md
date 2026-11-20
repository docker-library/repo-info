## `sapmachine:lts-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:a73095833ec9dc6cc2cfee73ab963f78b2f04a5bf4027ac340bfc68427022d72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f65b37645e49f5bf17424d21d017548fcb4d5026416d0cbd5e9a1029d8e8a104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168490688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca25b0731f705ba2354eaa2ac2b2f256e6565190e72c51dfc41e518fbb7cd62`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:32:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:32:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b3f5d7b9419a5f2887568b5dab516a265e346c4a206ee03b9f83ff67a41a`  
		Last Modified: Fri, 20 Nov 2026 03:33:09 GMT  
		Size: 138.4 MB (138420873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:800eb9681cb1e2e19d52e8cfd51d973ba4c68c801866a895b99c74587020d363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8198a015671acc35eb1982f0652396183918ee3eead85a7edd517e1c94278a5`

```dockerfile
```

-	Layers:
	-	`sha256:4f47d6300772ac063408c3cdbd6168679ef33efdaa458eb6d90bb800f2aa9c02`  
		Last Modified: Fri, 20 Nov 2026 03:33:06 GMT  
		Size: 2.6 MB (2579719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43cce5da8b6c391cb8583a3028f1ddc07f7375c56f3d64cbfed0434df6122787`  
		Last Modified: Fri, 20 Nov 2026 03:33:06 GMT  
		Size: 12.2 KB (12158 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:cbc1374dc8ecc8a4838c085211708e555133c675f19bc62436e12c94f6ad9a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165359679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffa9102f945ca652ec06ef4ce521ce3ce66cd142f0d053442a76a9d1a4feffc`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:34:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:34:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d96d66d5e3c6242be42c8fe76ae905b3cbae208b2f2fb00697f760dc19682ec`  
		Last Modified: Fri, 20 Nov 2026 03:35:07 GMT  
		Size: 137.4 MB (137358278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7267bf8334e4fb90d9ab3cca31daf96e315b32616ea88bec15d35ac675c56852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795b6ca5a8c0c26c5bdfaf53955fc11d9bb525d54686088106ccf9df4e52bab1`

```dockerfile
```

-	Layers:
	-	`sha256:9ba26fbeb518481ea5ce1bfa180474b96648dcca26efe61e5f2e4b992012bec0`  
		Last Modified: Fri, 20 Nov 2026 03:35:04 GMT  
		Size: 2.6 MB (2579494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9d950773290e0b5aa24fcc02e900ae1ccf327fc1c13812666cd7f0c2a1eea4a`  
		Last Modified: Fri, 20 Nov 2026 03:35:04 GMT  
		Size: 12.4 KB (12358 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f04181d7019e13ee88c8f70499f3295921afce84f2ce64db316ad47b2e3ff26d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171246671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3faf8a8a4666880917a7d90a3de3aabb80c81905b91825c50a954aa519b5f3d0`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 05:18:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:18:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 05:18:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4117bbc2d41e7681a284910b8e790364e71a39d2bc3162bb05dc2ac403d9fe9e`  
		Last Modified: Fri, 20 Nov 2026 05:18:47 GMT  
		Size: 136.2 MB (136225009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8f84ad7091c8a448079e08e6dd715552be7763e31dbc4d3fbfcaa80ce04233d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013777935d2f78dbf319c5850e265e0f4960526d7fd6cc04f09bdd04074bd9b6`

```dockerfile
```

-	Layers:
	-	`sha256:667d692e10b0e9a073b14c016b5f72ec48c4d78be8dd4b3df4a12ba1947337a9`  
		Last Modified: Fri, 20 Nov 2026 05:18:44 GMT  
		Size: 2.6 MB (2578669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:842845a419953c5285194b9afec7545129fbceb0a2a58e2a774decccd96b9aa0`  
		Last Modified: Fri, 20 Nov 2026 05:18:44 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.in-toto+json
