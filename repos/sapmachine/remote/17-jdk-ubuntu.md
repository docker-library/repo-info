## `sapmachine:17-jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:0ea65d71ea82ba7208e5773bc0d7db4d37c65945cc14392f0ae186d0b0fc4767
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:a355ea04e04288bb8d0e6342aa7c5dc035cdb1e703cb35d88a230d668b3a94bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234921782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2604a89901c86260cb03944a83bb9db06fad099be8ea159de5002e4b264605c`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:08:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:08:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:08:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc43903ca001f4654b9a2d3141d9dc462cf666a77afc55d4309930d1e8ea37a`  
		Last Modified: Thu, 20 Aug 2026 18:08:28 GMT  
		Size: 205.2 MB (205168975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5ca887a0d92f674079e8c180b77883b8ee180ac3d90206e065071e9a1e0a4845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c048e7a1f5cbf78e19865eccb9acfaeda2c7398baeda67807828519b151ca0d`

```dockerfile
```

-	Layers:
	-	`sha256:8a4bbfb5cd8c89be7e6f0ef2fe39d89f91f8075968ba7f6c3f2694facd7b9136`  
		Last Modified: Thu, 20 Aug 2026 18:08:24 GMT  
		Size: 2.6 MB (2606246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1360f8ed63fa385b42e2536b29256cbc221813ffb18b0469eecbb7f13bd2ba`  
		Last Modified: Thu, 20 Aug 2026 18:08:24 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5388a6145f9bc4c1dc45e26c0c5b9b6968b488e502cebeefb2cfbacda82877af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232835986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b4dbc51797a5846e60017b684a4d54a52d3eb52731a4130eadf873b620e621`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:04:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:04:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:04:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d7b10a5d526ee750dfed3a0262216b898eae606eab2e30e2d814e00fe8e04`  
		Last Modified: Thu, 20 Aug 2026 18:05:04 GMT  
		Size: 203.9 MB (203948751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ec3bc687161570c05d7ccc0e28ad32392bd52afdf84afffb37aa11a21ae9177e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c2e32c70a207ecc34f650fa6962d7abe6b120d4ae4cd9de657c80c561431b1`

```dockerfile
```

-	Layers:
	-	`sha256:736d39b039fca56ccc8ac82c3df7a5c871077c908444767af7f00e8073f2c6c1`  
		Last Modified: Thu, 20 Aug 2026 18:05:00 GMT  
		Size: 2.6 MB (2606858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b842bdb5791e77b14a4ba0bcf93d531b930d18136ffb10a709d08e3746214d`  
		Last Modified: Thu, 20 Aug 2026 18:05:00 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:50377bdc1cb3612bb7354d4cd5b1ae4fb3521e12e2f38912468e27adcc9e4d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238608706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7405b86730dcfb8d6b42bb89f13540c21fe7f6d409559b295b69e884bce6e0f5`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:18:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:18:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:18:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d610662793cc7b47dd3c2fbace222f3e122af4258f9daf2a763b6458a5e3ab`  
		Last Modified: Thu, 20 Aug 2026 18:19:27 GMT  
		Size: 204.3 MB (204297511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:eb039c30e1710c4436b85348862eec1c9297e707a8c70035a391e0a48b1bea52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62be990499aaf465fe3ac085b19017ff06534b2831c716c60af91357fb4b622c`

```dockerfile
```

-	Layers:
	-	`sha256:b56bf6c3e3ce884d519f6e35cb76cb48b94ab366633a9aefcbec8133583e8ef5`  
		Last Modified: Thu, 20 Aug 2026 18:19:23 GMT  
		Size: 2.6 MB (2603846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a18a5f448666b5fad64b09acac22123c81f3510c13bdc635e1b69f4f9b6f32a`  
		Last Modified: Thu, 20 Aug 2026 18:19:23 GMT  
		Size: 13.5 KB (13494 bytes)  
		MIME: application/vnd.in-toto+json
