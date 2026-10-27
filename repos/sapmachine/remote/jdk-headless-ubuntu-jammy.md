## `sapmachine:jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:74f9616e2e72611c19bcaff1c7fb83f14f33fb94f08089ef25f7720935546e02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:c793e5252ee8dbd32bfb2fd1997ed70b193c3519706d6bf7d1f5302837bcd7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167504508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0653a00622186c4920c8472f05e27043925cb502be002c7a6217e51546527e5`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268d110f1a28d3d79fe5a7131a17bf83f8049a7a1b6ad994694ff5fa2b070d07`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.8 MB (137752020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:48b6bb9e1adee298ec9842fb528e72805864d9a75c341effa57f126fa60e0ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2968a68871116dc9330e0aa6b7d56f57a25eb5ba958281949b8e88e2d4280e5a`

```dockerfile
```

-	Layers:
	-	`sha256:501c6b7685be746b7d6520c781aa19907fd65db7fda33ceca23c46852f211a71`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 2.3 MB (2321318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9c7b9c387f213a431f7494d74c3df5e7ce6512850076be05fab11372db565e2`  
		Last Modified: Mon, 26 Oct 2026 23:39:04 GMT  
		Size: 10.3 KB (10331 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:617ccf1c7c23470f48455ecfb4c75304b03499e0ca1dcc9cc505ac6380af59f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164476510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51383bf8ae77ca620a70c0cdb5c4f66f52bee7c59118ba5c51f37506f8509612`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:43:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0f2caca00effe8bf548fc186987e7d2a3e86da204b828e56fe26ff960e4bd9`  
		Last Modified: Mon, 26 Oct 2026 23:44:04 GMT  
		Size: 136.8 MB (136791903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6fa262a23180f9d15c33568a14f6a8b87da8156e3eaf959bc3e737e81badeef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e6ee53e6dd25c2c48bfe53bdb93b778c5e273bcdb1da9caf5161e6d34104b2`

```dockerfile
```

-	Layers:
	-	`sha256:bb5a82e09a3689e80d50a3bb8cfb85029add05daf0dc77168204e089728dfd21`  
		Last Modified: Mon, 26 Oct 2026 23:44:00 GMT  
		Size: 2.3 MB (2321011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da34bfe6ae09ce5fa946e0aeaa5778834c4b057dca86a6325360638b04d9947c`  
		Last Modified: Mon, 26 Oct 2026 23:44:00 GMT  
		Size: 10.5 KB (10459 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:cf20570bd56ab60c82f2843e2f345abc6e4bc0ecbf18804112d716b42710a2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171442207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6790dc586f7f2156fcabebee0dd3ffc24ba803c11d09ec265a2b842814e08ef`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:53:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:53:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:53:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfdca03f8d740d238eafa3d78e72226f743ea5d380adb1a7016b1130393bfa0`  
		Last Modified: Fri, 23 Oct 2026 18:54:50 GMT  
		Size: 136.7 MB (136738570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b3ebccef6e3a57fca4e708f1a32027964af4017705ce5b5f4cd442b73148e0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c988ee4398549e771fad5a936b2348c00b4ab170ead6fbc27c6823a92d90c66c`

```dockerfile
```

-	Layers:
	-	`sha256:f0fbb28ab87d82ad38db79b159461f88e19cd2d9f5dba77edd26da8f51c9158b`  
		Last Modified: Fri, 23 Oct 2026 18:54:47 GMT  
		Size: 2.3 MB (2320130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7973dded0882a5618628e9ed7e7862fcdac90f5c58d42a325a8722795a7f53ad`  
		Last Modified: Fri, 23 Oct 2026 18:54:47 GMT  
		Size: 10.4 KB (10387 bytes)  
		MIME: application/vnd.in-toto+json
